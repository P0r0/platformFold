.class Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->uiSetPageNumber(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

.field final synthetic val$pageNumber:I


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .prologue
    .line 277
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iput p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->val$pageNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumberText:Landroid/widget/TextView;

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->val$pageNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->val$pageNumber:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 284
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_BackImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    :goto_1b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageKeys:Ljava/util/HashMap;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->val$pageNumber:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 289
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_NextImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    :goto_36
    return-void

    .line 286
    :cond_37
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_BackImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1b

    .line 291
    :cond_3f
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_NextImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_36
.end method
