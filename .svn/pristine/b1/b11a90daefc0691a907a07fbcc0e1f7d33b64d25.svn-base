.class Lmobisocial/longdan/net/WsRpcConnection$11$1;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection$11;->onResponse(Lmobisocial/longdan/LDProtocols$LDHelloChallengeResponse;)V
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
        "Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/longdan/net/WsRpcConnection$11;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection$11;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/longdan/net/WsRpcConnection$11;

    .prologue
    .line 633
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11$1;, "Lmobisocial/longdan/net/WsRpcConnection$11$1;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 659
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11$1;, "Lmobisocial/longdan/net/WsRpcConnection$11$1;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$11;

    iget-object v0, v0, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hello challenge failed with exception"

    invoke-static {v0, v1, p1}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$11;

    invoke-virtual {v0, p1}, Lmobisocial/longdan/net/WsRpcConnection$11;->doChallengeFailure(Ljava/lang/Exception;)V

    .line 661
    return-void
.end method

.method public onResponse(Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;)V
    .registers 5
    .param p1, "response"    # Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;

    .prologue
    .line 637
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11$1;, "Lmobisocial/longdan/net/WsRpcConnection$11$1;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$11;

    iget-object v1, v1, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v1}, Lmobisocial/longdan/net/WsRpcConnection;->doAuthenticationComplete()V

    .line 639
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$11;

    iget-object v1, v1, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iget-object v0, v1, Lmobisocial/longdan/net/WsRpcConnection;->mClosestClusterListener:Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .line 640
    .local v0, "ccl":Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;
    if-eqz v0, :cond_1f

    .line 641
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$11$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$11;

    iget-object v1, v1, Lmobisocial/longdan/net/WsRpcConnection$11;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->mCallbackExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnection;->access$1700(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lmobisocial/longdan/net/WsRpcConnection$11$1$1;

    invoke-direct {v2, p0, v0, p1}, Lmobisocial/longdan/net/WsRpcConnection$11$1$1;-><init>(Lmobisocial/longdan/net/WsRpcConnection$11$1;Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 649
    :cond_1f
    return-void
.end method

.method public bridge synthetic onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 2

    .prologue
    .line 633
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$11$1;, "Lmobisocial/longdan/net/WsRpcConnection$11$1;"
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;

    invoke-virtual {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection$11$1;->onResponse(Lmobisocial/longdan/LDProtocols$LDCompleteChallengeResponse;)V

    return-void
.end method
