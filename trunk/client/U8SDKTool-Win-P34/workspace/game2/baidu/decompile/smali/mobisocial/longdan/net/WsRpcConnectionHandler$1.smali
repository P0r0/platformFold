.class Lmobisocial/longdan/net/WsRpcConnectionHandler$1;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler;->enqueueOrExecuteRequest(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

.field final synthetic val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 151
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$1;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$1;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$1;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$1;->val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 155
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$1;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$1;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$1;->val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    new-instance v1, Lmobisocial/longdan/exception/LongdanNetworkException;

    const-string v2, "Not connected"

    invoke-direct {v1, v2}, Lmobisocial/longdan/exception/LongdanNetworkException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;->onException(Lmobisocial/longdan/exception/LongdanException;)V

    .line 156
    return-void
.end method
