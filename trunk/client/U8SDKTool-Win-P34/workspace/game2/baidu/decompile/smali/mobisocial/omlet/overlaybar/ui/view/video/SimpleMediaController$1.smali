.class Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController$1;
.super Ljava/lang/Object;
.source "SimpleMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->setAnchorView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    .prologue
    .line 37
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_listener:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->access$000(Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 42
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->_listener:Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->access$000(Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/IMediaController$OnRequestChangeVideoZoomListener;->onRequestChangeVideoZoom()V

    .line 44
    :cond_11
    return-void
.end method
