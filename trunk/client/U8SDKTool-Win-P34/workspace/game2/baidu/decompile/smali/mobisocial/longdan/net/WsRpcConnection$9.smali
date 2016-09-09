.class Lmobisocial/longdan/net/WsRpcConnection$9;
.super Ljava/lang/Object;
.source "WsRpcConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/longdan/net/WsRpcConnection;->postExceptions(Lmobisocial/longdan/exception/LongdanException;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnection;

.field final synthetic val$e:Lmobisocial/longdan/exception/LongdanException;

.field final synthetic val$responseHandlers:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnection;Ljava/util/Collection;Lmobisocial/longdan/exception/LongdanException;)V
    .registers 4
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnection;

    .prologue
    .line 458
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$9;, "Lmobisocial/longdan/net/WsRpcConnection$9;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnection$9;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    iput-object p2, p0, Lmobisocial/longdan/net/WsRpcConnection$9;->val$responseHandlers:Ljava/util/Collection;

    iput-object p3, p0, Lmobisocial/longdan/net/WsRpcConnection$9;->val$e:Lmobisocial/longdan/exception/LongdanException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 462
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnection$9;, "Lmobisocial/longdan/net/WsRpcConnection$9;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$9;->this$0:Lmobisocial/longdan/net/WsRpcConnection;

    # getter for: Lmobisocial/longdan/net/WsRpcConnection;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnection;->access$200(Lmobisocial/longdan/net/WsRpcConnection;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Posting internal exceptions"

    invoke-static {v1, v2}, Lmobisocial/util/OMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnection$9;->val$responseHandlers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;

    .line 464
    .local v0, "l":Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    iget-object v2, p0, Lmobisocial/longdan/net/WsRpcConnection$9;->val$e:Lmobisocial/longdan/exception/LongdanException;

    invoke-interface {v0, v2}, Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;->onException(Lmobisocial/longdan/exception/LongdanException;)V

    goto :goto_11

    .line 466
    .end local v0    # "l":Lmobisocial/longdan/net/WsRpcConnection$OnInternalRpcResponse;
    :cond_23
    return-void
.end method
