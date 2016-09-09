.class Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$1;
.super Ljava/lang/Object;
.source "MediaUploadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;

.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;

    .prologue
    .line 1075
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1079
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$LogoutTask$1;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1080
    return-void
.end method
