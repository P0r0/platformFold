.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    .line 189
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_CutImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_btn_edit_cut_click"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 191
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->_CutImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_btn_edit_cut_normal"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19
.end method
