.class Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;
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

.field final synthetic val$userPosition:I


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    .prologue
    .line 140
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    iput p2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;->val$userPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    iget v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;->val$userPosition:I

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "user":Ljava/lang/String;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter$1;->this$0:Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;

    # getter for: Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->mFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;->access$000(Lmobisocial/omlet/overlaybar/ui/adapter/UserGroupAdapter;)Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->OpenProfile(Ljava/lang/String;)V

    .line 146
    return-void
.end method
