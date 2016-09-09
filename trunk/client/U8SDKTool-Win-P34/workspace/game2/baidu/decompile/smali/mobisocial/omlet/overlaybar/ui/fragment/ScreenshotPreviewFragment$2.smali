.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;
.super Ljava/lang/Object;
.source "ScreenshotPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 75
    :try_start_1
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/util/media/MediaUtil;->copyScreenshotToPublicPictureDir(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_toast_save_succeeded"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    .line 80
    :goto_2a
    return-void

    .line 77
    :catch_2b
    move-exception v0

    .line 78
    .local v0, "ignored":Ljava/lang/Exception;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "omp_toast_save_failed"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2a
.end method
