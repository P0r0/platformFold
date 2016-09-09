.class Lmobisocial/longdan/net/WsRpcConnectionHandler$7;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnPushReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/longdan/net/WsRpcConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;


# direct methods
.method constructor <init>(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/longdan/net/WsRpcConnectionHandler;

    .prologue
    .line 400
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$7;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$7;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$7;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPushReceived(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V
    .registers 8
    .param p1, "request"    # Lmobisocial/longdan/LDProtocols$LDJSONLoggable;

    .prologue
    .line 404
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$7;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$7;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$7;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushListeners:Ljava/util/Map;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1200(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 405
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 406
    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$7;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mPushListeners:Ljava/util/Map;
    invoke-static {v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1200(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 407
    .local v1, "receivers":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;>;"
    if-eqz v1, :cond_30

    .line 408
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;

    .line 409
    .local v0, "p":Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;
    invoke-interface {v0, p1}, Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;->onPushReceived(Lmobisocial/longdan/LDProtocols$LDJSONLoggable;)V

    goto :goto_1d

    .line 412
    .end local v0    # "p":Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener;
    .end local v1    # "receivers":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;>;"
    .end local v2    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_2d
    move-exception v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v3

    .restart local v1    # "receivers":Ljava/util/Set;, "Ljava/util/Set<Lmobisocial/longdan/net/WsRpcConnectionHandler$OnPushListener<+Lmobisocial/longdan/LDProtocols$LDJSONLoggable;>;>;"
    .restart local v2    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2d

    .line 413
    return-void
.end method
