.class Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$5;
.super Ljava/lang/Object;
.source "EmbeddedVideoViewFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->onResume()V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$5;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 250
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$5;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 3
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 254
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->messaging()Lmobisocial/omlib/api/OmletMessagingApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletMessagingApi;->onMessagingActivityResumed()V

    .line 255
    return-void
.end method
