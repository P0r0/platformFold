.class Lmobisocial/longdan/net/WsRpcConnection$10;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->doPing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
        "<",
        "Lmobisocial/longdan/LDProtocols$LDPingResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$serverResponse:[Ljava/lang/Object;

.field final synthetic val$timeoutLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;[Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 547
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$10;, "Lmobisocial/longdan/net/WsRpcConnection$10;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$10;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$10;->val$serverResponse:[Ljava/lang/Object;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$10;->val$timeoutLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 557
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$10;, "Lmobisocial/longdan/net/WsRpcConnection$10;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$10;->val$timeoutLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 558
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$10;->val$serverResponse:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 559
    return-void
.end method

.method public bridge synthetic onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 2

    .prologue
    .line 547
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$10;, "Lmobisocial/longdan/net/WsRpcConnection$10;"
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDPingResponse;

    invoke-virtual {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection$10;->onResponse(Lmobisocial/longdan/LDProtocols$LDPingResponse;)V

    return-void
.end method

.method public onResponse(Lmobisocial/longdan/LDProtocols$LDPingResponse;)V
    .registers 4
    .param p1, "response"    # Lmobisocial/longdan/LDProtocols$LDPingResponse;

    .prologue
    .line 551
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$10;, "Lmobisocial/longdan/net/WsRpcConnection$10;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$10;->val$serverResponse:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 552
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$10;->val$timeoutLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 553
    return-void
.end method
