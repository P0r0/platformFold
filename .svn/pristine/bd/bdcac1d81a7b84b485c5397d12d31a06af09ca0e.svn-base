.class Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;
.super Ljava/lang/Object;
.source "EmbeddedVideoViewFragment.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/view/video/OmMediaController$OmMediaControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    .prologue
    .line 151
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseListener()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 217
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 219
    :cond_11
    return-void
.end method

.method public onLikedListener(Z)V
    .registers 4
    .param p1, "liked"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/api/OmletApiManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 156
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;

    invoke-direct {v1, p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;Z)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 185
    :cond_1a
    return-void
.end method

.method public onSharedListener()V
    .registers 5

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "share_link":Ljava/lang/String;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    if-eqz v3, :cond_27

    .line 191
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v1, v3, Lmobisocial/longdan/LDProtocols$LDVideoPost;->LinkUrl:Ljava/lang/String;

    .line 194
    :cond_15
    :goto_15
    move-object v2, v1

    .line 195
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 196
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_26

    .line 197
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;

    invoke-direct {v3, p0, v2, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    :cond_26
    return-void

    .line 192
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "url":Ljava/lang/String;
    :cond_27
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    if-eqz v3, :cond_15

    .line 193
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$4;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v3

    iget-object v3, v3, Lmobisocial/longdan/LDProtocols$LDPostContainer;->ScreenShotPost:Lmobisocial/longdan/LDProtocols$LDScreenShotPost;

    iget-object v1, v3, Lmobisocial/longdan/LDProtocols$LDScreenShotPost;->LinkUrl:Ljava/lang/String;

    goto :goto_15
.end method
