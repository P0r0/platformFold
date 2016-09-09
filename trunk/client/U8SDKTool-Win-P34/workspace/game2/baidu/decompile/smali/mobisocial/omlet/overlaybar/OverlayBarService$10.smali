.class Lmobisocial/omlet/overlaybar/OverlayBarService$10;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 841
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$10;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 845
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$10;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$10;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordingControlsEnabled:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 846
    return-void

    .line 845
    :cond_13
    const/16 v0, 0x8

    goto :goto_f
.end method
