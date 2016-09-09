.class Lmobisocial/omlet/overlaybar/OverlayBarService$13;
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
    .line 1100
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$13;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$13;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$13;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1105
    .local v0, "previewVideoIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1106
    const-string v1, "extra_video_path"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$13;->val$videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$13;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1108
    return-void
.end method
