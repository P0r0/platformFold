.class Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$6;
.super Ljava/lang/Object;
.source "ShareToPeopleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->AddItemToTop(Ljava/lang/String;)V
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
    .line 194
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;->_SelectedUserScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 199
    return-void
.end method
