.class Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;
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
    name = "ShowRecordingControlsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

.field final touchId:J


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;J)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;
    .param p2, "touchId"    # J

    .prologue
    .line 520
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-wide p2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;->touchId:J

    .line 522
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 526
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OverlayBackgroundVisible:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$700(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;->touchId:J

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-wide v2, v2, Lmobisocial/omlet/overlaybar/OverlayBarService;->touchId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 527
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$ShowRecordingControlsCallback;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->fadeInBackground()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3400(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 529
    :cond_1f
    return-void
.end method
