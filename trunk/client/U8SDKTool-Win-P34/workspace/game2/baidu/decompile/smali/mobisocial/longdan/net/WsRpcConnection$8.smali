.class Lmobisocial/longdan/net/WsRpcConnection$8;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->postException(Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

.field final synthetic val$e:Lmobisocial/longdan/exception/LongdanException;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 447
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$8;, "Lmobisocial/longdan/net/WsRpcConnection$8;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$8;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$8;->val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$8;->val$e:Lmobisocial/longdan/exception/LongdanException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 451
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$8;, "Lmobisocial/longdan/net/WsRpcConnection$8;"
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$8;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Posting onResponse"

    invoke-static {v0, v1}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lmobisocial/longdan/net/WsRpcConnection$8;->val$callback:Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;

    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$8;->val$e:Lmobisocial/longdan/exception/LongdanException;

    invoke-interface {v0, v1}, Lmobisocial/longdan/net/WsRpcConnection$OnRpcResponse;->onException(Lmobisocial/longdan/exception/LongdanException;)V

    .line 453
    return-void
.end method
