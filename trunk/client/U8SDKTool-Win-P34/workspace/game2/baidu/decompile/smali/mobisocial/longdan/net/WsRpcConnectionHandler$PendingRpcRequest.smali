.class Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingRpcRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRpcRequest:",
        "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
        "TRpcResponse:",
        "Lmobisocial/longdan/LDProtocols$LDJSONLoggable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRpcRequest;"
        }
    .end annotation
.end field

.field responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
            "<TTRpcResponse;>;"
        }
    .end annotation
.end field

.field responseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTRpcResponse;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;


# direct methods
.method public constructor <init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;Ljava/lang/Class;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;)V
    .registers 5
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRpcRequest;",
            "Ljava/lang/Class",
            "<TTRpcResponse;>;",
            "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse",
            "<TTRpcResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;, "Lmobisocial/longdan/net/WsRpcConnectionHandler<TTRequestContainer;TTResponseContainer;>.PendingRpcRequest<TTRpcRequest;TTRpcResponse;>;"
    .local p2, "request":Lmobisocial/longdan/LDProtocols$LDJSONLoggable;, "TTRpcRequest;"
    .local p3, "responseType":Ljava/lang/Class;, "Ljava/lang/Class<TTRpcResponse;>;"
    .local p4, "responseCallback":Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;, "Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse<TTRpcResponse;>;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->request:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .line 438
    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->responseType:Ljava/lang/Class;

    .line 439
    iput-object p4, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$PendingRpcRequest;->responseCallback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    .line 440
    return-void
.end method
