.class Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$4;
.super Ljava/lang/Object;
.source "UploadCompleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$4;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Share link"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$4;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->share_link:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$4;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    const-string v2, "Share link"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
