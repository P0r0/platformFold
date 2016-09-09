.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;
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

.field final synthetic val$post:Lmobisocial/longdan/LDProtocols$LDPost;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .prologue
    .line 466
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 470
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 514
    :goto_a
    return-void

    .line 472
    :cond_b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ApiManager:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$4;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    goto :goto_a
.end method
