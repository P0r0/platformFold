.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12$1;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$OnVideoViewSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->onTaskComplete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;

    .prologue
    .line 609
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnVideoViewGroupPrepared()V
    .registers 1

    .prologue
    .line 623
    return-void
.end method

.method public fitVideoToContainer()V
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->fitVideoViewToContainer()V

    .line 614
    return-void
.end method

.method public fitVideoToDeviceScreen()V
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->fitVideoViewToDeviceScreen()V

    .line 619
    return-void
.end method
