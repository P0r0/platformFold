.class Lmobisocial/longdan/net/WsRpcConnection$1$1;
.super Ljava/util/TimerTask;
.source "WsRpcConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection$1;->onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/longdan/net/WsRpcConnection$1;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection$1;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/longdan/net/WsRpcConnection$1;

    .prologue
    .line 232
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1$1;, "Lmobisocial/longdan/net/WsRpcConnection$1$1;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$1$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 236
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$1$1;, "Lmobisocial/longdan/net/WsRpcConnection$1$1;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$1$1;->this$1:Lmobisocial/longdan/net/WsRpcConnection$1;

    iget-object v0, v0, Lmobisocial/longdan/net/WsRpcConnection$1;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # invokes: Lmobisocial/longdan/net/WsRpcConnection;->doPing()V
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$900(Lmobisocial/longdan/net/WsRpcConnection;)V

    .line 237
    return-void
.end method
