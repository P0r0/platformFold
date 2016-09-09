.class Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$2;
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
    .line 282
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$2;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$2;->val$noti:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extraFromNotification"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    new-instance v1, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$2;->val$noti:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$NotiTestData;->postContainer:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    invoke-direct {v1, v2}, Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;-><init>(Lmobisocial/longdan/LDProtocols$LDVideoPost;)V

    .line 289
    .local v1, "videoPost":Lmobisocial/omlet/overlaybar/util/ParcelableLDVideoPost;
    const-string v2, "extraVideoPost"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter$2;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEODETAILS:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    new-array v4, v4, [Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 291
    return-void
.end method
