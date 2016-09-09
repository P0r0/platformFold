.class Lmobisocial/omlet/overlaybar/OverlayBarService$1;
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
    .line 218
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 233
    :cond_14
    :goto_14
    return-void

    .line 225
    :cond_15
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    const-string v1, "path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$202(Lmobisocial/omlet/overlaybar/OverlayBarService;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoPath:Ljava/lang/String;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_VideoFile:Ljava/io/File;
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$302(Lmobisocial/omlet/overlaybar/OverlayBarService;Ljava/io/File;)Ljava/io/File;

    .line 227
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_ResumeRecording:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 228
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->startTimer()V

    .line 230
    :cond_3d
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 231
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$1;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_14
.end method
