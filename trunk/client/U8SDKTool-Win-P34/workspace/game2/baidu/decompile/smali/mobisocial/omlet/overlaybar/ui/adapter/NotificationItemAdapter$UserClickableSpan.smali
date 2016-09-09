.class Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "NotificationItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserClickableSpan"
.end annotation


# instance fields
.field clicked:Ljava/lang/String;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;


# direct methods
.method public constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    .line 240
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 241
    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;->clicked:Ljava/lang/String;

    .line 242
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraUserAccount"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "extraUserName"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;->clicked:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$UserClickableSpan;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 250
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 255
    return-void
.end method
