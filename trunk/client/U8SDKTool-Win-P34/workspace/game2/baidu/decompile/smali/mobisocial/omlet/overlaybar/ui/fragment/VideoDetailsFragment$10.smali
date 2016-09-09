.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$10;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->UpdateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .prologue
    .line 466
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1a

    .line 471
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollDownHint:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 472
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$10;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->_ScrollDownHint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    :cond_1a
    return-void
.end method
