.class Lmobisocial/omlet/overlaybar/OverlayBarService$14;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;->showUnuploadedVideoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 1110
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$14;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$14;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$14;->val$videoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1116
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/util/Misc;->clearDirectory(Ljava/io/File;[Ljava/lang/String;)V

    .line 1118
    :cond_15
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$14;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->resetVideoRecovery(Landroid/content/Context;)V

    .line 1119
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1120
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$14;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->updateCounterVisibility()V
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4100(Lmobisocial/omlet/overlaybar/OverlayBarService;)V

    .line 1121
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$14;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$14;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "omp_unupload_video_deleted"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1122
    return-void
.end method
