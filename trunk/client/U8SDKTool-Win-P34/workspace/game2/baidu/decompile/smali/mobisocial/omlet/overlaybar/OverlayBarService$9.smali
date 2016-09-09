.class Lmobisocial/omlet/overlaybar/OverlayBarService$9;
.super Ljava/util/TimerTask;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;->scheduleFadeTimer(Landroid/view/WindowManager$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 755
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 759
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    return-void
.end method
