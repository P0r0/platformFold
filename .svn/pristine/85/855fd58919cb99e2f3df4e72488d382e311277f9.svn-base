.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;
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

.field final synthetic val$posterName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;Lmobisocial/longdan/LDProtocols$LDPost;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .prologue
    .line 445
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    iput-object p4, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->val$posterName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 449
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->shareView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 459
    :goto_b
    return-void

    .line 451
    :cond_c
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->val$mediaHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;

    iget-boolean v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$MediaViewHolder;->isOwner:Z

    if-eqz v1, :cond_22

    .line 452
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    new-array v3, v4, [Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    goto :goto_b

    .line 454
    :cond_22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 455
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraUserAccount"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->val$post:Lmobisocial/longdan/LDProtocols$LDPost;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDPostId;->Poster:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v1, "extraUserName"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->val$posterName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$3;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    goto :goto_b
.end method
