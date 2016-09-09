.class Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    .prologue
    .line 242
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    iget v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->uiSetPageNumber(I)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$700(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)V

    .line 247
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_Items:Ljava/util/List;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->updateVideos(Ljava/util/List;)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$800(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;

    iget v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment$7;->val$pageNumber:I

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->_PageNumber:I
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;->access$902(Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;I)I

    .line 249
    return-void
.end method
