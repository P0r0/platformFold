.class Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;

    .prologue
    .line 147
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;

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

    .line 152
    if-nez p3, :cond_4

    .line 160
    :goto_3
    return-void

    .line 154
    :cond_4
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterListView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobisocial/longdan/LDProtocols$LDPostTag;

    .line 155
    .local v1, "tag":Lmobisocial/longdan/LDProtocols$LDPostTag;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extraTag"

    iget-object v3, v1, Lmobisocial/longdan/LDProtocols$LDPostTag;->Tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    invoke-virtual {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    sget-object v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->VIDEOSTAGGED:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/os/Bundle;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 158
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterMenuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 159
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_FilterButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_3
.end method
