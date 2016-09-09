.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;
.super Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;
.source "MediaItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotViewHolder"
.end annotation


# instance fields
.field screenshot:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 259
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Landroid/view/View;Z)V

    .line 260
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "screenshot"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 261
    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "screenshot_thumbnail_placeholder"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ScreenshotViewHolder;->placeholderImageView:Landroid/widget/ImageView;

    .line 262
    return-void
.end method
