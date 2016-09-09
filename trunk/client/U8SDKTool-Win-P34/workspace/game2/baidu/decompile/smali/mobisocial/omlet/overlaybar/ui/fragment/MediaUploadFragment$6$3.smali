.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$3;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    .prologue
    .line 324
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->startActivity(Landroid/content/Intent;)V

    .line 328
    return-void
.end method
