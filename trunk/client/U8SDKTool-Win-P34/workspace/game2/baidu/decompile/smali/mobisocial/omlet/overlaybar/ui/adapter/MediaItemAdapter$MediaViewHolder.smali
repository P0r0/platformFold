.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MediaItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaViewHolder"
.end annotation


# instance fields
.field convertView:Landroid/view/ViewGroup;

.field imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

.field index:I

.field isOwner:Z

.field likeButtonView:Landroid/view/View;

.field likeCountTextView:Landroid/widget/TextView;

.field likeImage:Landroid/widget/ImageView;

.field nameTextView:Landroid/widget/TextView;

.field placeholderImageView:Landroid/widget/ImageView;

.field profileImageView:Landroid/widget/ImageView;

.field shareButtonView:Landroid/view/View;

.field shareCloseButton:Landroid/widget/ImageButton;

.field shareToPeopleButton:Landroid/widget/ImageButton;

.field shareView:Landroid/view/View;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

.field thumbnailImageView:Landroid/widget/ImageView;

.field timeTextview:Landroid/widget/TextView;

.field titleTextView:Landroid/widget/TextView;

.field viewCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;Z)V
    .registers 6
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "isContent"    # Z

    .prologue
    .line 215
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 216
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 217
    if-eqz p3, :cond_e5

    move-object v0, p2

    .line 218
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->convertView:Landroid/view/ViewGroup;

    .line 219
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "profile_icon"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->profileImageView:Landroid/widget/ImageView;

    .line 220
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 221
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "time"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->timeTextview:Landroid/widget/TextView;

    .line 222
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 223
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "like_count"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->likeCountTextView:Landroid/widget/TextView;

    .line 224
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "view_count"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->viewCountTextView:Landroid/widget/TextView;

    .line 225
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "like"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->likeButtonView:Landroid/view/View;

    .line 226
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "share"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareButtonView:Landroid/view/View;

    .line 227
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "like_btn"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->likeImage:Landroid/widget/ImageView;

    .line 228
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "share_view_group"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareView:Landroid/view/View;

    .line 229
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "share_close_button"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareCloseButton:Landroid/widget/ImageButton;

    .line 230
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "share_to_people_button"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareToPeopleButton:Landroid/widget/ImageButton;

    .line 231
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->imageLoadingCancellationSignal:Landroid/os/CancellationSignal;

    .line 233
    :cond_e5
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    return-void
.end method
