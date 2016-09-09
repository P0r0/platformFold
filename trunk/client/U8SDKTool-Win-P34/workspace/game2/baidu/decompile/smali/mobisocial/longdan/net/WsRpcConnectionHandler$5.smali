.class Lmobisocial/longdan/net/WsRpcConnectionHandler$5;
.super Ljava/lang/Object;
.source "WsRpcConnectionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 281
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$5;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$5;"
    iput-object p1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$5;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 285
    .local p0, "this":Lmobisocial/longdan/net/WsRpcConnectionHandler$5;, "Lmobisocial/longdan/net/WsRpcConnectionHandler$5;"
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$5;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$400(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 286
    :try_start_7
    iget-object v1, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$5;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    # getter for: Lmobisocial/longdan/net/WsRpcConnectionHandler;->mSessionListeners:Ljava/util/Set;
    invoke-static {v1}, Lmobisocial/longdan/net/WsRpcConnectionHandler;->access$400(Lmobisocial/longdan/net/WsRpcConnectionHandler;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;

    .line 287
    .local v0, "s":Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;
    iget-object v3, p0, Lmobisocial/longdan/net/WsRpcConnectionHandler$5;->this$0:Lmobisocial/longdan/net/WsRpcConnectionHandler;

    invoke-interface {v0, v3}, Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;->onSessionDisconnected(Lmobisocial/longdan/net/WsRpcConnectionHandler;)V

    goto :goto_11

    .line 289
    .end local v0    # "s":Lmobisocial/longdan/net/WsRpcConnectionHandler$SessionListener;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1

    :cond_26
    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 290
    return-void
.end method
