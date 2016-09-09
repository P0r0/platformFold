.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1$1;
.super Ljava/lang/Object;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;)V
    .registers 2
    .param p1, "this$3"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;

    .prologue
    .line 525
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1$1;->this$3:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1$1;->this$3:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3$1;->this$2:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$11;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 531
    return-void
.end method
