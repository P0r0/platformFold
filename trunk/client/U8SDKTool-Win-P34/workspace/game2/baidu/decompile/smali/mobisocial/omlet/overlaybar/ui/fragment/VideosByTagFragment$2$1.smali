.class Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$1;
.super Ljava/lang/Object;
.source "VideosByTagFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    .prologue
    .line 129
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 134
    if-nez p3, :cond_4

    .line 142
    :goto_3
    return-void

    .line 136
    :cond_4
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterListView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 137
    .local v1, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extraTag"

    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEOSTAGGED:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/os/Bundle;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 140
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 141
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;->_FilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_3
.end method
