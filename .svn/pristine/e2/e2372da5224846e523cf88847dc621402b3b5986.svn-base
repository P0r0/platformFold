.class Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;
.super Ljava/lang/Object;
.source "ScreenshotPreviewFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->uploadScreenshot()V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 149
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 5
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 153
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_config_flavor"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 154
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 155
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 156
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    :cond_3a
    :goto_3a
    return-void

    .line 169
    :cond_3b
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 171
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->Upload:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    invoke-virtual {v0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;)V

    goto :goto_3a
.end method
