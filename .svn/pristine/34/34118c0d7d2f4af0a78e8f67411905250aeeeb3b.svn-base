.class Lmobisocial/longdan/net/WsRpcConnectionHandler$8;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;


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
    .line 416
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$8;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$8;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$8;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosestCluster(Ljava/lang/String;)V
    .registers 6
    .param p1, "cluster"    # Ljava/lang/String;

    .prologue
    .line 420
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$8;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$8;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$8;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1300(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 421
    :try_start_7
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$8;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mClosestClusterListeners:Ljava/util/Set;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$1300(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;

    .line 422
    .local v0, "s":Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;
    invoke-interface {v0, p1}, Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;->onClosestCluster(Ljava/lang/String;)V

    goto :goto_11

    .line 424
    .end local v0    # "s":Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 425
    return-void
.end method
