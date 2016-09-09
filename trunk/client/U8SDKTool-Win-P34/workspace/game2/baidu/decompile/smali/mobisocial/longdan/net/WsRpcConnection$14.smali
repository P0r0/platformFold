.class Lmobisocial/longdan/net/WsRpcConnection$14;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->call(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse",
        "<TTRpcResponse;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

.field final synthetic val$responseType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 780
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$14;, "Lmobisocial/longdan/net/WsRpcConnection$14;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->val$responseType:Ljava/lang/Class;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TTRpcResponse;>;"
        }
    .end annotation

    .prologue
    .line 784
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$14;, "Lmobisocial/longdan/net/WsRpcConnection$14;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->val$responseType:Ljava/lang/Class;

    return-object v0
.end method

.method public onException(Lmobisocial/longdan/exception/LongdanException;)V
    .registers 3
    .param p1, "e"    # Lmobisocial/longdan/exception/LongdanException;

    .prologue
    .line 796
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$14;, "Lmobisocial/longdan/net/WsRpcConnection$14;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    .line 797
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    if-eqz v0, :cond_e

    .line 798
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    invoke-interface {v0, p1}, Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;->onException(Lmobisocial/longdan/exception/LongdanException;)V

    .line 799
    :cond_e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 780
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$14;, "Lmobisocial/longdan/net/WsRpcConnection$14;"
    check-cast p1, Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    invoke-virtual {p0, p1}, Lmobisocial/longdan/net/WsRpcConnection$14;->onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

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
    .line 789
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$14;, "Lmobisocial/longdan/net/WsRpcConnection$14;"
    .local p1, "o":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcResponse;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    invoke-virtual {v0}, Lmobisocial/longdan/net/WsRpcConnection;->decrementInterest()V

    .line 790
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    if-eqz v0, :cond_e

    .line 791
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$14;->val$responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    invoke-interface {v0, p1}, Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;->onResponse(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    .line 792
    :cond_e
    return-void
.end method
