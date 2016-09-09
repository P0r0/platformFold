.class Lmobisocial/omlet/overlaybar/OverlayBarService$2;
.super Landroid/content/BroadcastReceiver;
.source "OverlayBarService.java"


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
    .line 236
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 257
    :cond_15
    :goto_15
    return-void

    .line 242
    :cond_16
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 243
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 244
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 246
    :cond_30
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z
    invoke-static {v0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$702(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z

    .line 247
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "omp_btn_tool_record"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "omp_button_record_video"

    invoke-static {p1, v1}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 250
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_66
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z
    invoke-static {v0, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1102(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z

    .line 253
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 254
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$2;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 256
    :cond_7d
    const-string v0, "omp_overlayBarService_recording_failed"

    invoke-static {p1, v0}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15
.end method
