.class Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;
.super Ljava/lang/Object;
.source "VideoViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 189
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_MediaErrorView:Landroid/view/View;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$500(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingView:Landroid/view/View;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$600(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->val$context:Landroid/content/Context;

    const-string v3, "omp_rotator"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 196
    .local v0, "rotator":Landroid/view/animation/Animation;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_LoadingImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$700(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup$5;->this$0:Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->_FilePath:Ljava/lang/String;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->access$800(Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/VideoViewGroup;->resetMediaPlayer(Ljava/lang/String;)V

    .line 198
    return-void
.end method
