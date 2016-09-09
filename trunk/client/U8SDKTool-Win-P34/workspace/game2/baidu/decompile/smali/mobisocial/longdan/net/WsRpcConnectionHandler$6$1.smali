.class Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler$6;->onSocketConnectionAttemptFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/longdan/net/WsRpcConnectionHandler$6;

.field final synthetic val$requests:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnectionHandler$6;Ljava/util/Queue;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/longdan/net/WsRpcConnectionHandler$6;

    .prologue
    .line 374
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;->this$1:Lmobisocial/longdan/net/WsRpcConnectionHandler$6;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;->val$requests:Ljava/util/Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 379
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$6$1;->val$requests:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;

    .local v0, "req":Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;
    if-eqz v0, :cond_1b

    .line 380
    iget-object v1, v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    new-instance v2, Lmobisocial/longdan/exception/LongdanNetworkException;

    const-string v3, "Connection attempt failed"

    invoke-direct {v2, v3}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;->onException(Lmobisocial/longdan/exception/LongdanException;)V

    goto :goto_0

    .line 384
    :cond_1b
    return-void
.end method
