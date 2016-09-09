.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->initViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    .prologue
    .line 138
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_34

    .line 143
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->val$context:Landroid/content/Context;

    const-string v3, "omp_omlet_blue"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->val$context:Landroid/content/Context;

    const-string v2, "omp_view_om_media_controller_error_button_background_press"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 149
    :cond_32
    :goto_32
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 146
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorSeeLater:Landroid/widget/TextView;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$000(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$1;->val$context:Landroid/content/Context;

    const-string v2, "omp_view_om_media_controller_error_button_background"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_32
.end method
