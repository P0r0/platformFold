.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$6;
.super Ljava/lang/Object;
.source "MediaItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->updateMediaHolderCommonFields(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

.field final synthetic val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .prologue
    .line 563
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$6;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$6;->val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 567
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$6;->val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    return-void
.end method
