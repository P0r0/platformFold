.class Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;
.super Ljava/lang/Object;
.source "UploadCircularProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->autoIncreaseProgressTo99()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 54
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 55
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    # getter for: Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->circularProgressBar:Lcom/lylc/widget/circularprogressbar/CircularProgressBar;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->access$100(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;)Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->getProgress()I

    move-result v0

    .line 56
    .local v0, "currentProgress":I
    const/16 v1, 0x63

    if-ge v0, v1, :cond_24

    .line 57
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;->this$0:Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;

    add-int/lit8 v2, v0, 0x1

    # invokes: Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->setIncreaseProgress(I)V
    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;->access$200(Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog;I)V

    .line 58
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/view/UploadCircularProgressDialog$2;->val$h:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .end local v0    # "currentProgress":I
    :cond_24
    return-void
.end method
