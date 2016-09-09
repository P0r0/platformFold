.class Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1$1;
.super Ljava/lang/Object;
.source "MediaItemAdapter.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;

    .prologue
    .line 374
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 374
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 5
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 379
    :try_start_0
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$1;->val$videoHolder:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter$VideoViewHolder;->video:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDVideoPost;->PostId:Lmobisocial/longdan/LDProtocols$LDPostId;

    invoke-virtual {v1, v2}, Lmobisocial/omlib/client/ClientGameUtils;->addView(Lmobisocial/longdan/LDProtocols$LDPostId;)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    :try_end_13
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_13} :catch_14

    .line 383
    :goto_13
    return-void

    .line 380
    :catch_14
    move-exception v0

    .line 381
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v1, "MediaItemAdapter"

    const-string v2, "Error adding view"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method
