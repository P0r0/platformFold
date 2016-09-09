.class Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;
.super Ljava/util/TimerTask;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordTimerTask"
.end annotation


# instance fields
.field isHintShown:Z

.field mEstimatedVideoLengthMs:J

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 933
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->isHintShown:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 941
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    return-void
.end method
