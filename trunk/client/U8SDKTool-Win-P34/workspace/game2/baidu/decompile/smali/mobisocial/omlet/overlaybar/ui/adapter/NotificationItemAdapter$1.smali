.class Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;
.super Ljava/lang/Object;
.source "NotificationItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

.field final synthetic val$noti:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    .prologue
    .line 267
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;->val$noti:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;->val$noti:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 276
    :goto_b
    return-void

    .line 273
    :cond_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extraUserAccount"

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;->val$noti:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->userList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    goto :goto_b
.end method
