.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;
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
    .line 85
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OriginPath:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_4a

    .line 91
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_OriginPath:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->setCurrentFilePath(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->access$002(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_ScreenshotImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_Path:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_4a
    return-void
.end method
