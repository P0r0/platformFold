.class Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    .prologue
    .line 941
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 945
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->getEstimatedVideoLengthMs()J

    move-result-wide v2

    iput-wide v2, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->mEstimatedVideoLengthMs:J

    .line 946
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-wide v2, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->mEstimatedVideoLengthMs:J

    invoke-static {v2, v3}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatVideoTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-wide v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->mEstimatedVideoLengthMs:J

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_68

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoFile:Ljava/io/File;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$300(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 948
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoFile:Ljava/io/File;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$300(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v7}, Lmobisocial/omlet/overlaybar/util/Misc;->hasEnoughDiskSpace(Ljava/io/File;Z)Z

    move-result v0

    if-nez v0, :cond_68

    .line 949
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-virtual {v0, v7}, Lmobisocial/omlet/overlaybar/OverlayBarService;->stopRecording(Z)V

    .line 950
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_overlayBarService_out_of_space"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 958
    :cond_67
    :goto_67
    return-void

    .line 954
    :cond_68
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-boolean v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->isHintShown:Z

    if-nez v0, :cond_67

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-wide v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->mEstimatedVideoLengthMs:J

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_MaxVideoLengthMs:J
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1300(Lmobisocial/omlet/overlaybar/OverlayBarService;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_67

    .line 955
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iput-boolean v6, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->isHintShown:Z

    .line 956
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "omp_video_length_too_long_dialog_description"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/OverlayBarService$RecordTimerTask;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_MaxVideoLengthMs:J
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1300(Lmobisocial/omlet/overlaybar/OverlayBarService;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->formatTimeToMinutesSecondsString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_67
.end method
