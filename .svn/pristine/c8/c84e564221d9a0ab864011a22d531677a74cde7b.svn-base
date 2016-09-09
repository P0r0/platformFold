.class Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$6;
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
    .line 132
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$6;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$6;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->mLinkClicked:Z

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$6;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->share_link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$6;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;

    invoke-virtual {v1, v0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method
