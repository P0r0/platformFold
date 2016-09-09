.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;
.super Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;
.source "MediaItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

.field video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

.field videoDuration:Landroid/widget/TextView;

.field videoPlayImageview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;Z)V

    .line 247
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "video"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 248
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "video_thumbnail_placeholder"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->placeholderImageView:Landroid/widget/ImageView;

    .line 249
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "video_play_image"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->videoPlayImageview:Landroid/widget/ImageView;

    .line 250
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "video_duration"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->videoDuration:Landroid/widget/TextView;

    .line 251
    return-void
.end method
