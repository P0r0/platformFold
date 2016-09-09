.class Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;
.super Ljava/lang/Object;
.source "OverlayBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService$9;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    .prologue
    .line 759
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 763
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 764
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 765
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_61

    .line 766
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->val$params:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 767
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 772
    :goto_34
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "omp_om_button_idle"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 773
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->val$params:Landroid/view/WindowManager$LayoutParams;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->updateViewLayoutSafe(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    invoke-static {v1, v2, v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$2800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 774
    return-void

    .line 769
    :cond_61
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 770
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$9$1;->this$1:Lmobisocial/omlet/overlaybar/OverlayBarService$9;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/OverlayBarService$9;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$900(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_34
.end method
