.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$9;
.super Ljava/lang/Object;
.source "OmMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    .prologue
    .line 275
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1700(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 280
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$9;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_OmMediaControlListener:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$1700(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;->onCloseListener()V

    .line 282
    :cond_11
    return-void
.end method
