.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$2;
.super Ljava/lang/Object;
.source "VideoEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    .prologue
    .line 202
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 207
    return-void
.end method
