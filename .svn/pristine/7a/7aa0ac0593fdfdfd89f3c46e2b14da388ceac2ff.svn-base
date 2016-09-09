.class Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$1;
.super Ljava/lang/Object;
.source "UploadCircularProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;-><init>(Landroid/app/Activity;ILandroid/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .prologue
    .line 38
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$1;->this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->dialogCancelled:Landroid/os/CancellationSignal;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->access$000(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 43
    return-void
.end method
