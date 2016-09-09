.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$12;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->onStart()V
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
    .line 525
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 529
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$12;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->closeTutorialView()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$900(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    .line 530
    const/4 v0, 0x0

    return v0
.end method
