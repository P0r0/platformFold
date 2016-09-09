.class Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2$1;
.super Ljava/lang/Object;
.source "EmbeddedVideoViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;

    .prologue
    .line 117
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->showVideo()V

    .line 122
    return-void
.end method
