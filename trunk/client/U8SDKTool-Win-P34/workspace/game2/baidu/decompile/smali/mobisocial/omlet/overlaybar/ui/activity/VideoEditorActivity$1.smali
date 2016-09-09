.class Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    const-string v2, "omp_videoEditorActivity_close"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->clearTempVideoFiles()V

    .line 81
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->finish()V

    .line 82
    return-void
.end method
