.class Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;
.super Ljava/lang/Object;
.source "EmbeddedVideoViewFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getVideoPost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 96
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 9
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 101
    :try_start_0
    move-object v0, p1

    check-cast v0, Lmobisocial/omlib/service/OmlibService;

    move-object v4, v0

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_PostId:Lmobisocial/longdan/LDProtocols$LDPostId;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$000(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/ClientGameUtils;->getPost(Lmobisocial/longdan/LDProtocols$LDPostId;)Lmobisocial/longdan/LDProtocols$LDGetPostResponse;

    move-result-object v3

    .line 102
    .local v3, "response":Lmobisocial/longdan/LDProtocols$LDGetPostResponse;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    iget-object v5, v3, Lmobisocial/longdan/LDProtocols$LDGetPostResponse;->Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$102(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;Lmobisocial/longdan/LDProtocols$LDPostContainer;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    .line 103
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    if-eqz v4, :cond_4e

    .line 104
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->HlsUrl:Ljava/lang/String;

    if-eqz v4, :cond_65

    .line 105
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDVideoPost;->HlsUrl:Ljava/lang/String;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_VideoUrl:Ljava/lang/String;
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$202(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    const/4 v5, 0x1

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_UsingHlsLink:Z
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$302(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;Z)Z

    .line 116
    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_4e
    :goto_4e
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 117
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2$1;

    invoke-direct {v5, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    .end local v3    # "response":Lmobisocial/longdan/LDProtocols$LDGetPostResponse;
    :cond_64
    :goto_64
    return-void

    .line 107
    .restart local v3    # "response":Lmobisocial/longdan/LDProtocols$LDGetPostResponse;
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_65
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v4, v4, Lmobisocial/longdan/LDProtocols$LDVideoPost;->BlobLinkString:Ljava/lang/String;

    if-eqz v4, :cond_a2

    .line 108
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    const/4 v5, 0x0

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_Post:Lmobisocial/longdan/LDProtocols$LDPostContainer;
    invoke-static {v6}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$100(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;)Lmobisocial/longdan/LDProtocols$LDPostContainer;

    move-result-object v6

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDPostContainer;->VideoPost:Lmobisocial/longdan/LDProtocols$LDVideoPost;

    iget-object v6, v6, Lmobisocial/longdan/LDProtocols$LDVideoPost;->BlobLinkString:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lmobisocial/omlib/client/ClientGameUtils;->getDownloadTicket(ZLjava/lang/String;)Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;

    move-result-object v1

    .line 109
    .local v1, "downloadTicketResponse":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;->BlobDownloadTicket:Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;

    iget-object v5, v5, Lmobisocial/longdan/LDProtocols$LDBlobDownloadTicket;->Url:Ljava/lang/String;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_VideoUrl:Ljava/lang/String;
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$202(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    const/4 v5, 0x0

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->_UsingHlsLink:Z
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->access$302(Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;Z)Z
    :try_end_97
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_97} :catch_98

    goto :goto_4e

    .line 125
    .end local v1    # "downloadTicketResponse":Lmobisocial/longdan/LDProtocols$LDGetDownloadTicketResponse;
    .end local v3    # "response":Lmobisocial/longdan/LDProtocols$LDGetPostResponse;
    :catch_98
    move-exception v2

    .line 126
    .local v2, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v2}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    .line 127
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->showErrorLoadingToast()V

    goto :goto_64

    .line 112
    .end local v2    # "e":Lmobisocial/longdan/exception/LongdanException;
    .restart local v3    # "response":Lmobisocial/longdan/LDProtocols$LDGetPostResponse;
    .restart local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    :cond_a2
    :try_start_a2
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment$2;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;

    invoke-virtual {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/EmbeddedVideoViewFragment;->showErrorLoadingToast()V
    :try_end_a7
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_a2 .. :try_end_a7} :catch_98

    goto :goto_64
.end method
