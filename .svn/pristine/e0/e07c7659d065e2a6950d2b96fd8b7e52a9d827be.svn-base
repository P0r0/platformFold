.class Lmobisocial/longdan/net/WsRpcConnectionHandler$2;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler;->callSynchronous(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Z)Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
        "<TTRpcResponse;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 178
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$2;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$2;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;->val$result:Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 3
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 188
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$2;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$2;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;->val$result:Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;

    iput-object p1, v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;->exception:Lmobisocial/longdan/exception/LongdanException;

    .line 189
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 190
    return-void
.end method

.method public onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRpcResponse;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$2;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$2;"
    .local p1, "response":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcResponse;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;->val$result:Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;

    iput-object p1, v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$ResponseContainer;->response:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .line 183
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 184
    return-void
.end method
