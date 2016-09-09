.class Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1$1;
.super Ljava/lang/Object;
.source "OmplayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;)V
    .registers 2
    .param p1, "this$2"    # Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;

    .prologue
    .line 139
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1$1;->this$2:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    const-string v3, "omp_already_signed_in"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method
