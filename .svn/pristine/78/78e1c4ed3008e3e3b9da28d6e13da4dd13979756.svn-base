.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 258
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 262
    const/4 v0, 0x6

    if-ne p2, v0, :cond_10

    .line 263
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$1;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->setUserName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$200(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V

    .line 265
    :cond_10
    const/4 v0, 0x0

    return v0
.end method
