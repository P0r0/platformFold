.class Lmobisocial/omlet/overlaybar/OverlayBarService$3;
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
    .line 260
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v10, 0x10000000

    const/4 v9, 0x0

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 314
    :cond_17
    :goto_17
    return-void

    .line 266
    :cond_18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "omlet.glrecorder.SCREENSHOT_AVAILABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 269
    const-string v6, "path"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "picturePath":Ljava/lang/String;
    const-string v6, "OverlayBarService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Picture: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v2, "previewScreenshotIntent":Landroid/content/Intent;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    const-string v6, "extra_screenshot_path"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_17

    .line 275
    .end local v1    # "picturePath":Ljava/lang/String;
    .end local v2    # "previewScreenshotIntent":Landroid/content/Intent;
    :cond_55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "omlet.glrecorder.VIDEO_AVAILABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_129

    .line 278
    const-string v6, "path"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "videoPath":Ljava/lang/String;
    const-string v6, "OverlayBarService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/util/Timer;

    move-result-object v6

    if-eqz v6, :cond_99

    .line 281
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/util/Timer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 282
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_RecordTimer:Ljava/util/Timer;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$600(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/util/Timer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Timer;->purge()I

    .line 284
    :cond_99
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_Recording:Z
    invoke-static {v6, v9}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$702(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z

    .line 285
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonImageView:Landroid/widget/ImageView;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$800(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/ImageView;

    move-result-object v6

    const-string v7, "omp_btn_tool_record"

    invoke-static {p1, v7}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_StoppedRecording:Z
    invoke-static {v6, v9}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1102(Lmobisocial/omlet/overlaybar/OverlayBarService;Z)Z

    .line 287
    invoke-static {p1}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoRecordingWasCancelled(Landroid/content/Context;)Z

    move-result v4

    .line 288
    .local v4, "videoCancelled":Z
    invoke-static {p1, v9}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setPrefVideoRecordingWasCancelled(Landroid/content/Context;Z)V

    .line 289
    if-eqz v4, :cond_104

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 294
    :cond_c9
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, "omp_button_record_video"

    invoke-static {p1, v7}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 296
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_eb
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_fd

    .line 299
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    :cond_fd
    const-string v6, ""

    invoke-static {p1, v6}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setVideoPathToRecover(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 303
    .end local v0    # "file":Ljava/io/File;
    :cond_104
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_115

    .line 304
    iget-object v6, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$3;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 306
    :cond_115
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v3, "previewVideoIntent":Landroid/content/Intent;
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    const-string v6, "extra_video_path"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 312
    .end local v3    # "previewVideoIntent":Landroid/content/Intent;
    .end local v4    # "videoCancelled":Z
    .end local v5    # "videoPath":Ljava/lang/String;
    :cond_129
    const-string v6, "OverlayBarService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown broadcast: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method
