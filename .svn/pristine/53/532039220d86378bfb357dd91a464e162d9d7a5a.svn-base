.class Lmobisocial/omlib/client/LongdanClient$1;
.super Ljava/lang/Object;
.source "LongdanClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/LongdanClient;->postNetworkConnectivityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/LongdanClient;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/LongdanClient;Z)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlib/client/LongdanClient;

    .prologue
    .line 247
    iput-object p1, p0, Lmobisocial/omlib/client/LongdanClient$1;->this$0:Lmobisocial/omlib/client/LongdanClient;

    iput-boolean p2, p0, Lmobisocial/omlib/client/LongdanClient$1;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-boolean v0, p0, Lmobisocial/omlib/client/LongdanClient$1;->val$connected:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$1;->this$0:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->isDataSyncRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 252
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$1;->this$0:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->msgClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->reconnect(Z)V

    .line 253
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$1;->this$0:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->idpClient()Lmobisocial/longdan/net/WsRpcConnectionHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->reconnect(Z)V

    .line 254
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$1;->this$0:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getDurableJobProcessor()Lmobisocial/omlib/client/LongdanDurableJobProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanDurableJobProcessor;->restartWaitingJobs()V

    .line 256
    :cond_28
    iget-object v0, p0, Lmobisocial/omlib/client/LongdanClient$1;->this$0:Lmobisocial/omlib/client/LongdanClient;

    invoke-virtual {v0}, Lmobisocial/omlib/client/LongdanClient;->getBlobDownloader()Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;

    move-result-object v0

    iget-boolean v1, p0, Lmobisocial/omlib/client/LongdanClient$1;->val$connected:Z

    invoke-virtual {v0, v1}, Lmobisocial/omlib/client/LongdanBlobDownloadProcessor;->onNetworkConnectivityChanged(Z)V

    .line 257
    return-void
.end method
