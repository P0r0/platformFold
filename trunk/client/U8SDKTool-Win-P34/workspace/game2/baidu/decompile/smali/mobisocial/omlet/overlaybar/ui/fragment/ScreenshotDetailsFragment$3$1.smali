.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;
.super Ljava/lang/Object;
.source "ScreenshotDetailsFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    .prologue
    .line 243
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 243
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 7
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 247
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v3

    invoke-interface {v3}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_25

    .line 248
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 249
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$1;

    invoke-direct {v4, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_24
    :goto_24
    return-void

    .line 261
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_25
    const/4 v1, 0x0

    .line 263
    .local v1, "share_link":Ljava/lang/String;
    :try_start_26
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->_ScreenshotPost:Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/util/ParcelableLDScreenShotPost;->getPostId()Lmobisocial/longdan/LDProtocols$LDPostId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmobisocial/omlib/client/ClientGameUtils;->getPost(Lmobisocial/longdan/LDProtocols$LDPostId;)Lmobisocial/longdan/LDProtocols$LDGetPostResponse;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDGetPostResponse;->Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v1, v3, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->LinkUrl:Ljava/lang/String;
    :try_end_42
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_26 .. :try_end_42} :catch_5e

    .line 266
    :goto_42
    move-object v2, v1

    .line 267
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_24

    .line 269
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;

    invoke-direct {v4, p0, v2, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment$3$1;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_24

    .line 264
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "url":Ljava/lang/String;
    :catch_5e
    move-exception v3

    goto :goto_42
.end method
