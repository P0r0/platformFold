.class Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$1;
.super Ljava/lang/Object;
.source "VideoDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 232
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->dismissMoreMenu()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;)V

    .line 237
    const/4 v0, 0x1

    return v0
.end method
