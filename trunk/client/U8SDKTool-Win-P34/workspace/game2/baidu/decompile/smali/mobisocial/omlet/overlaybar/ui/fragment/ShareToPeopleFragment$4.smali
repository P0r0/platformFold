.class Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$4;
.super Ljava/lang/Object;
.source "ShareToPeopleFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 107
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->searchUser()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;)V

    .line 109
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
