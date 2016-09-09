.class Lmobisocial/longdan/net/WsRpcConnection$6;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->postResponse(Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

.field final synthetic val$decoded:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 421
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$6;, "Lmobisocial/longdan/net/WsRpcConnection$6;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$6;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$6;->val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$6;->val$decoded:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 425
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$6;, "Lmobisocial/longdan/net/WsRpcConnection$6;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$6;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Posting internal onResponse"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$6;->val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$6;->val$decoded:Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    invoke-interface {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;->onResponse(Ljava/lang/Object;)V

    .line 427
    return-void
.end method
