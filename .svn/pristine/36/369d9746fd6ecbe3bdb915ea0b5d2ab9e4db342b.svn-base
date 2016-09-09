.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$3;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .prologue
    .line 228
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    .line 233
    .local v0, "titled":Z
    :goto_8
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    iget-object v3, v2, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->_TitleWarningView:Landroid/view/View;

    if-eqz v0, :cond_16

    const/16 v2, 0x8

    :goto_10
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return v1

    .end local v0    # "titled":Z
    :cond_14
    move v0, v1

    .line 232
    goto :goto_8

    .restart local v0    # "titled":Z
    :cond_16
    move v2, v1

    .line 233
    goto :goto_10
.end method
