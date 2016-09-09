.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1$1;
.super Ljava/lang/Object;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1;)V
    .registers 2
    .param p1, "this$2"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1;

    .prologue
    .line 481
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 487
    return-void
.end method
