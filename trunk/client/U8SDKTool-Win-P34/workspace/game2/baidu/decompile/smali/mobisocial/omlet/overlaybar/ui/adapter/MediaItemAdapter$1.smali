.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;
.super Ljava/lang/Object;
.source "MediaItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->updateVideoHolder(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

.field final synthetic val$videoHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .prologue
    .line 360
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->val$videoHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 364
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->val$videoHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->shareView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 386
    :goto_c
    return-void

    .line 367
    :cond_d
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->val$videoHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-wide v6, v2, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Views:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Lmobisocial/longdan/LDProtocols$LDVideoPost;->Views:J

    .line 368
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->notifyDataSetChanged()V

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "extraFromProfile"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ItemBaseType:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    sget-object v6, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$ItemBaseType;

    if-ne v2, v6, :cond_5c

    move v2, v3

    :goto_2d
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    new-instance v1, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->val$videoHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    invoke-direct {v1, v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;-><init>(Lmobisocial/longdan/LDProtocols$LDVideoPost;)V

    .line 372
    .local v1, "videoPost":Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;
    const-string v2, "extraVideoPost"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->_ApiManager:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1$1;

    invoke-direct {v5, p0}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;)V

    invoke-virtual {v2, v5}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 385
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v5, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEODETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    new-array v4, v4, [Landroid/os/Bundle;

    aput-object v0, v4, v3

    invoke-virtual {v2, v5, v4}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    goto :goto_c

    .end local v1    # "videoPost":Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;
    :cond_5c
    move v2, v4

    .line 370
    goto :goto_2d
.end method
