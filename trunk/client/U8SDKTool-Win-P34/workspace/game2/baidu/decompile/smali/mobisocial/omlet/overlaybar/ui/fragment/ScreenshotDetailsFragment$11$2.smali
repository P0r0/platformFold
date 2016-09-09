.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;
.super Ljava/lang/Object;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    .prologue
    .line 494
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 498
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 499
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_MoreButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPosterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getCreationDate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_BlobLink:Ljava/lang/String;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->downloadBitmapAndSaveToDevice(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 504
    return-void
.end method
