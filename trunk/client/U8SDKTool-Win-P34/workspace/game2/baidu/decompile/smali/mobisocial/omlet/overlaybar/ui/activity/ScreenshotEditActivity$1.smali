.class Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$1;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->finish()V

    .line 66
    return-void
.end method
