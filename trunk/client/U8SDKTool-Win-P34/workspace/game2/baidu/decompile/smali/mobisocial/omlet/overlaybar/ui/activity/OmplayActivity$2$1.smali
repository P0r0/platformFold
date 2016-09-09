.class Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;
.super Ljava/lang/Object;
.source "OmplayActivity.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    .prologue
    .line 131
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 131
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 5
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 135
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 136
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "signin":Landroid/content/Intent;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v1, v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0    # "signin":Landroid/content/Intent;
    :goto_20
    return-void

    .line 139
    :cond_21
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;->this$0:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1$1;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2$1;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_20
.end method
