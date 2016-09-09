.class Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;
.super Ljava/lang/Object;
.source "UserGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->updateView(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

.field final synthetic val$holder:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;

.field final synthetic val$userPosition:I


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;ILmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    .prologue
    .line 149
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    iput p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->val$userPosition:I

    iput-object p3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->val$holder:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->val$userPosition:I

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "user":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 155
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;)Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->RemoveSharePeople(Ljava/lang/String;)V

    .line 159
    :goto_19
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->val$holder:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;

    iget v3, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->val$userPosition:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->setSelectButton(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V
    invoke-static {v1, v2, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->access$100(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$ViewHolder;I)V

    .line 160
    return-void

    .line 157
    :cond_23
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$2;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;)Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->AddSharePeople(Ljava/lang/String;)V

    goto :goto_19
.end method
