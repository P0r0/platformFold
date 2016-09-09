.class Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$1;
.super Ljava/lang/Object;
.source "UserItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

.field final synthetic val$user:Lmobisocial/longdan/LDProtocols$LDUser;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;Lmobisocial/longdan/LDProtocols$LDUser;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .prologue
    .line 145
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$1;->val$user:Lmobisocial/longdan/LDProtocols$LDUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extraUserAccount"

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$1;->val$user:Lmobisocial/longdan/LDProtocols$LDUser;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDUser;->Account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->_Context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->PROFILE:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 152
    return-void
.end method
