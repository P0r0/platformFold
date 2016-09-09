.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;
.super Ljava/lang/Object;
.source "ScreenshotPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;
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
    .line 100
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    .line 105
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoBtn:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_white_border_omletblue_fill_round_background"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 107
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->_RedoBtn:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_white_border_round_background"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_19
.end method
