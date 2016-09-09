.class Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$1;
.super Ljava/lang/Object;
.source "OmMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 127
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x1f4

    .line 131
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # invokes: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->setProgress()I
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$000(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)I

    move-result v0

    .line 132
    .local v0, "currentPosition":I
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->_ShowProgressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;->access$100(Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method
