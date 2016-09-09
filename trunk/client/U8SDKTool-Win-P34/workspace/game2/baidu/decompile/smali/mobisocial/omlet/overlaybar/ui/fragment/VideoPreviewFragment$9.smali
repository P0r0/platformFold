.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$9;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->onPause()V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 283
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$9;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 283
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$9;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 3
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 287
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->messaging()Lmobisocial/omlib/api/OmletMessagingApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletMessagingApi;->onMessagingActivityPaused()V

    .line 288
    return-void
.end method
